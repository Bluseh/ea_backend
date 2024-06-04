package com.extrace.server.websocket;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;

@Slf4j
@Component
@ServerEndpoint("/playBack/{userTel}")
public class WebSocketServerPlayBack {



    /** 记录链接在线数量 **/
    private static final AtomicInteger onlineCount = new AtomicInteger(0);


    /** 存放每个客户端对应的 WebSocketServer 对象 **/
    private static CopyOnWriteArraySet<WebSocketServerPlayBack> webSocketSet = new CopyOnWriteArraySet<>();


    /** 与某个客户端的连接会话，需要通过它来给客户端发送数据 **/
    private Session session;
    private static ConcurrentHashMap<String, WebSocketServerPlayBack> webSocketMap = new ConcurrentHashMap<>();


    /** 心跳报文 **/
    private static final String HEARTBEAT_PACKETS = "The heartbeat packets";


    public static ConcurrentHashMap<String, WebSocketServerPlayBack> getWebSocketMap() {
        return webSocketMap;
    }

    public static void setWebSocketMap(ConcurrentHashMap<String, WebSocketServerPlayBack> webSocketMap) {
        WebSocketServerPlayBack.webSocketMap = webSocketMap;
    }
    /**
     * 连接建立成功调用的方法
     */
    @OnOpen
    public void onOpen(Session session, @PathParam("userTel") String userTel) {
        this.session = session;
        // 加入set中
        webSocketSet.add(this);
        // 在线数加1
        onlineCount.getAndIncrement();
        webSocketMap.put(userTel, this);
    }


    /**
     * 连接关闭调用的方法
     */
    @OnClose
    public void onClose() {
        // 从set中删除
        webSocketSet.remove(this);
        // 在线数减1
        onlineCount.getAndDecrement();
    }

    /**
     * 发生错误时调用
     */
    @OnError
    public void onError(Session session, Throwable error) {
        log.error("[历史数据回放] - WS 异常断开", session, error);
    }


    /**
     * 收到客户端消息后调用的方法
     *
     * @param message 客户端发送过来的消息*/
    @OnMessage
    public void onMessage(String message, Session session) {
        if (HEARTBEAT_PACKETS.equals(message)) {
            log.debug("[消息订阅] - 心跳.");
            return;
        }
        // TODO 接收前端入参后的业务处理

    }

    /**
     * 群发自定义消息
     */
    public static void sendInfo(String message) {
        for (WebSocketServerPlayBack item : webSocketSet) {
            try {

                item.sendMessage(message);
            } catch (IOException e) {
                log.error("[NVR 数据对接] - 数据推送异常, 数据: [{}].", message, e);
                continue;
            }
        }
    }


    /**
     * 指定会话推送
     * @param message
     */
    public static void sendInfo(String userTel, String message) {
        WebSocketServerPlayBack socket = webSocketMap.get(userTel);
        System.out.println("yyq\nuserTel:"+userTel);
        try {
            if (null != socket.session) {
                socket.session.getBasicRemote().sendText(message);
                System.out.println("yyq\nmessage:\n"+message);
            }
        } catch (IOException e) {
            log.error("[数据对接] - 数据推送异常, 数据: [{}].", message, e);
        }
    }

    /**
     * 向链接推送消息
     * @param message
     * @throws IOException
     */
    public void sendMessage(String message) throws IOException {
        this.session.getBasicRemote().sendText(message);
    }



}
