.class Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;
.super Landroid/os/Handler;
.source "ImageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thirdparty/arcsoft/engine/ImageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineHandler"
.end annotation


# instance fields
.field private final mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngine;

.field private mReceivedImageCount:I

.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;


# direct methods
.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;Lcom/thirdparty/arcsoft/engine/ImageEngine;Landroid/os/Looper;)V
    .locals 1
    .param p2, "imageEngine"    # Lcom/thirdparty/arcsoft/engine/ImageEngine;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .line 63
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    iput-object p2, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->mReceivedImageCount:I

    .line 66
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 105
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 106
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skip handleMessage - action = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-static {v10}, Lcom/thirdparty/arcsoft/engine/EngineActions;->stringify(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage - action = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-static {v10}, Lcom/thirdparty/arcsoft/engine/EngineActions;->stringify(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iget v3, p1, Landroid/os/Message;->what:I

    .line 113
    .local v3, "engineAction":I
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 115
    :pswitch_1
    :try_start_0
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->initEngineInternal()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 116
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v6

    .line 190
    .local v6, "ex":Ljava/lang/RuntimeException;
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$500(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v4

    .line 192
    .local v4, "engineState":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EngineAction["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/thirdparty/arcsoft/engine/EngineActions;->stringify(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] at EngineState["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "errorContext":Ljava/lang/String;
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RuntimeException during "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 197
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v9, -0x4

    invoke-interface {v8, v9}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    goto/16 :goto_0

    .line 118
    .end local v4    # "engineState":I
    .end local v5    # "errorContext":Ljava/lang/String;
    .end local v6    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 119
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    goto/16 :goto_0

    .line 125
    :pswitch_2
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v8

    const/16 v9, 0x100

    if-eq v8, v9, :cond_0

    .line 126
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->releaseEngineInternal()V

    .line 127
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/16 v9, 0x100

    invoke-virtual {v8, v9}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    goto/16 :goto_0

    .line 132
    :pswitch_3
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v8

    const/16 v9, 0x80

    if-ne v8, v9, :cond_3

    .line 133
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    const-string v9, "Engine already abort, igonre START_ENGINE action"

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :cond_3
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 137
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$500(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Ljava/lang/Runnable;

    move-result-object v8

    const-wide/16 v10, 0x7530

    invoke-virtual {p0, v8, v10, v11}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 142
    :pswitch_4
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    const-string v9, "ImageProcess - ABORT_ENGINE"

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v8

    const/16 v9, 0x80

    if-eq v8, v9, :cond_0

    .line 144
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->abortEngineInternal()V

    .line 145
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    goto/16 :goto_0

    .line 150
    :pswitch_5
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_4

    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    .line 151
    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_0

    .line 152
    :cond_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 153
    .local v7, "frameNum":I
    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8}, Lcom/android/camera/one/CameraType;->fromType(I)Lcom/android/camera/one/CameraType;

    move-result-object v0

    .line 154
    .local v0, "cameraType":Lcom/android/camera/one/CameraType;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_5

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/camera/one/DualSightCamType;

    move-object v2, v8

    .line 157
    .local v2, "dualSightCamType":Lcom/android/camera/one/DualSightCamType;
    :goto_1
    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    .line 158
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$300(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage(Lcom/android/camera/one/CameraType;I)[B

    move-result-object v1

    .line 163
    .local v1, "data":[B
    :goto_2
    if-eqz v1, :cond_8

    .line 164
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v0, v2, v1, v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z

    move-result v8

    if-nez v8, :cond_0

    .line 165
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 166
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v9, -0x4

    invoke-interface {v8, v9}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    goto/16 :goto_0

    .line 154
    .end local v1    # "data":[B
    .end local v2    # "dualSightCamType":Lcom/android/camera/one/DualSightCamType;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 160
    .restart local v2    # "dualSightCamType":Lcom/android/camera/one/DualSightCamType;
    :cond_6
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$300(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage(Lcom/android/camera/one/CameraType;)[B

    move-result-object v1

    .restart local v1    # "data":[B
    goto :goto_2

    .line 164
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 169
    :cond_8
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 170
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v9, -0x6

    invoke-interface {v8, v9}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    goto/16 :goto_0

    .line 176
    .end local v0    # "cameraType":Lcom/android/camera/one/CameraType;
    .end local v1    # "data":[B
    .end local v2    # "dualSightCamType":Lcom/android/camera/one/DualSightCamType;
    .end local v7    # "frameNum":I
    :pswitch_6
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 177
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-virtual {v8}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->processReultImageInternal()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 178
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    goto/16 :goto_0

    .line 180
    :cond_9
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 181
    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v8, v8, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v9, -0x4

    invoke-interface {v8, v9}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public requestAddFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V
    .locals 6
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "frameNum"    # I
    .param p4, "data"    # [B
    .param p5, "sync"    # Z

    .prologue
    const/4 v2, 0x6

    .line 77
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$200(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->mReceivedImageCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->mReceivedImageCount:I

    .line 78
    :cond_0
    const/4 v0, -0x1

    .line 79
    .local v0, "lock_fame_num":I
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$300(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->addImage(Lcom/android/camera/one/CameraType;I[B)V

    .line 80
    if-eqz p5, :cond_1

    .line 81
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$300(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->lockFrameNum(Lcom/android/camera/one/CameraType;I)V

    .line 82
    move v0, p3

    .line 86
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/one/CameraType;->getType()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 88
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$200(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->mReceivedImageCount:I

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v2}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$400(Lcom/thirdparty/arcsoft/engine/ImageEngine;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 89
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all required image received = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->mReceivedImageCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v1, v1, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 91
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 95
    :goto_1
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0, v2}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->removeMessages(I)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v2}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$500(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public requestInitEngine()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    return-void
.end method

.method public requestProcessResult()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 99
    return-void
.end method

.method public requestReleaseEngine()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 74
    return-void
.end method
