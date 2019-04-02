.class Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;
.super Ljava/lang/Object;
.source "ResourceCaptureToolsImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSessionManager$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionCanceled(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "mediaUri"    # Landroid/net/Uri;
    .param p2, "needRecoverThumbnail"    # Z

    .prologue
    .line 191
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionCanceled : mediaUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needRecoverThumbnail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$5;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventVideoCaptureCancel;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventVideoCaptureCancel;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 196
    invoke-static {p1}, Lcom/android/camera/Storage;->removesSessionContentUriPair(Landroid/net/Uri;)V

    .line 197
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/captureintent/stateful/StateMachine;->getCurrentState()Lcom/android/camera/captureintent/stateful/State;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "already close, remove SessionListener."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$300(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionCaptureIndicatorUpdate(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V
    .locals 3
    .param p1, "sessionUri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rotationDegrees"    # I
    .param p4, "needAnim"    # Z

    .prologue
    .line 151
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionCaptureIndicatorUpdate : sessionUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotationDegrees = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needAnim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onSessionDone(Landroid/net/Uri;)V
    .locals 3
    .param p1, "sessionUri"    # Landroid/net/Uri;

    .prologue
    .line 156
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionDone : sessionUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onSessionFailed(Landroid/net/Uri;IZZ)V
    .locals 3
    .param p1, "sessionUri"    # Landroid/net/Uri;
    .param p2, "failureMessageId"    # I
    .param p3, "removeFromFilmstrip"    # Z
    .param p4, "needRecoverThumbnail"    # Z

    .prologue
    .line 173
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionFailed : sessionUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failureMessageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removeFromFilmstrip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needRecoverThumbnail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$5;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventVideoCaptureFail;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventVideoCaptureFail;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 178
    invoke-static {p1}, Lcom/android/camera/Storage;->removesSessionContentUriPair(Landroid/net/Uri;)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/captureintent/stateful/StateMachine;->getCurrentState()Lcom/android/camera/captureintent/stateful/State;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "already close, remove SessionListener."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$300(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionPictureDataUpdate([BI)V
    .locals 3
    .param p1, "pictureData"    # [B
    .param p2, "orientation"    # I

    .prologue
    .line 99
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionPictureDataUpdate :  orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$5;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventPictureCompressed;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/captureintent/event/EventPictureCompressed;-><init>([BI)V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionPostProcessImageDone(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "mediaUri"    # Landroid/net/Uri;
    .param p2, "postProcessPreview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionPostProcessImageDone : mediaUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onSessionProgress(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "sessionUri"    # Landroid/net/Uri;
    .param p2, "progress"    # I

    .prologue
    .line 209
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionProgress : sessionUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onSessionProgressText(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "sessionUri"    # Landroid/net/Uri;
    .param p2, "messageId"    # I

    .prologue
    .line 214
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionProgressText : sessionUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public onSessionQueued(Landroid/net/Uri;)V
    .locals 3
    .param p1, "sessionUri"    # Landroid/net/Uri;

    .prologue
    .line 141
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionQueued : sessionUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onSessionRawImageSaved(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionRawImageSaved : path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onSessionResultMsg(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "mediaUri"    # Landroid/net/Uri;
    .param p2, "messageId"    # I

    .prologue
    .line 219
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionResultMsg : mediaUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public onSessionThumbnailUpdate(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "thumbnailBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSessionThumbnailUpdate"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$5;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventFastPictureBitmapAvailable;

    invoke-direct {v1, p1}, Lcom/android/camera/captureintent/event/EventFastPictureBitmapAvailable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionUpdated(Landroid/net/Uri;)V
    .locals 3
    .param p1, "sessionUri"    # Landroid/net/Uri;

    .prologue
    .line 146
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionUpdated : sessionUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onSessionVideoDataUpdate(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 7
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "finalPath"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p5, "orientation"    # I

    .prologue
    .line 112
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionCaptureIndicatorUpdate : videoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", finalPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mimeType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    sget-object v2, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$5;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/captureintent/stateful/StateMachine;->getCurrentState()Lcom/android/camera/captureintent/stateful/State;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;

    if-eqz v0, :cond_2

    .line 117
    invoke-static {p1}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/camera/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    .local v1, "contentUri":Landroid/net/Uri;
    :goto_1
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    if-eqz v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v6

    new-instance v0, Lcom/android/camera/captureintent/event/EventVideoAvailable;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/captureintent/event/EventVideoAvailable;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-interface {v6, v0}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 132
    .end local v1    # "contentUri":Landroid/net/Uri;
    :goto_2
    invoke-static {p1}, Lcom/android/camera/Storage;->removesSessionContentUriPair(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 117
    goto :goto_1

    .line 124
    .restart local v1    # "contentUri":Landroid/net/Uri;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v2, Lcom/android/camera/captureintent/event/EventVideoCaptureFail;

    invoke-direct {v2}, Lcom/android/camera/captureintent/event/EventVideoCaptureFail;-><init>()V

    invoke-interface {v0, v2}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    goto :goto_2

    .line 127
    .end local v1    # "contentUri":Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "already close, delete exist video file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and remove SessionListener."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0, p2}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$200(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$300(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/camera/session/CaptureSessionManager;->removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    goto :goto_2

    .line 114
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
