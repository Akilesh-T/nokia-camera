.class Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;
.super Landroid/os/Handler;
.source "PostProcessImageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineHandler"
.end annotation


# instance fields
.field private mImageEngine:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;


# direct methods
.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;Landroid/os/Looper;)V
    .locals 0
    .param p2, "imageEngine"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .line 78
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    iput-object p2, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->mImageEngine:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x80

    .line 108
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 110
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip handleMessage - action = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/thirdparty/arcsoft/engine/EngineActions;->stringify(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage - action = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/thirdparty/arcsoft/engine/EngineActions;->stringify(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage - state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v7, v7, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v7}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    .line 119
    .local v0, "engineAction":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 146
    :pswitch_1
    :try_start_0
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v5, v5, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->invalidate()V

    .line 147
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$1100(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->end()V

    .line 148
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v3

    .line 155
    .local v3, "ex":Ljava/lang/RuntimeException;
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$700(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v5, v5, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v1

    .line 157
    .local v1, "engineState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EngineAction["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/EngineActions;->stringify(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] at EngineState["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "errorContext":Ljava/lang/String;
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RuntimeException during "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v5, v5, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 162
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v5, v5, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v6, -0x4

    invoke-interface {v5, v6}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    goto/16 :goto_0

    .line 122
    .end local v1    # "engineState":I
    .end local v2    # "errorContext":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :pswitch_2
    :try_start_1
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v5, v5, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 123
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$700(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Ljava/lang/Runnable;

    move-result-object v5

    iget-object v6, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v6}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$800(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide/16 v6, 0x2710

    :goto_1
    invoke-virtual {p0, v5, v6, v7}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    const-wide/16 v6, 0x7530

    goto :goto_1

    .line 128
    :pswitch_3
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$1000(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;

    move-result-object v5

    iget-object v6, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v6}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;->doEnhancement(Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;)[B

    move-result-object v4

    .line 129
    .local v4, "res":[B
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v5, v5, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 130
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v5, v5, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    invoke-interface {v5, v4}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onPostProcessDone([B)V

    .line 131
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->mImageEngine:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->release()V

    .line 132
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->mImageEngine:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    goto/16 :goto_0

    .line 136
    .end local v4    # "res":[B
    :pswitch_4
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v5, v5, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v5

    if-eq v5, v8, :cond_0

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v5, v5, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    .line 137
    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v5

    const/16 v6, 0x100

    if-eq v5, v6, :cond_0

    .line 139
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v5

    const/16 v6, 0x10

    if-ge v5, v6, :cond_3

    .line 140
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v5, v5, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 142
    :cond_3
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v5, v5, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    invoke-interface {v5}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public requestAddFrame(I[BZ)V
    .locals 5
    .param p1, "frameNum"    # I
    .param p2, "data"    # [B
    .param p3, "sync"    # Z

    .prologue
    const/4 v4, 0x0

    .line 83
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAddFrame - frameNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->addImage(I[B)V

    .line 85
    if-eqz p3, :cond_0

    .line 86
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->lockFrameNum(I)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$200(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0, v4}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$202(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;Z)Z

    .line 92
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v0, v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v1}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$300(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)I

    move-result v1

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v2}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$400(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)I

    move-result v2

    const/16 v3, 0x11

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onPostImage(III[B)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$500(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$600(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v0, v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 98
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-interface {v1, v4, v4, v4, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$900(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

    move-result-object v2

    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$700(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$800(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x2710

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x7530

    goto :goto_1
.end method
