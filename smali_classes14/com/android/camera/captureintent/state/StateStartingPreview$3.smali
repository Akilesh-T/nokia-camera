.class Lcom/android/camera/captureintent/state/StateStartingPreview$3;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateStartingPreview;->registerEventHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/captureintent/stateful/EventHandler",
        "<",
        "Lcom/android/camera/captureintent/event/EventOnStartPreviewSucceeded;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateStartingPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateStartingPreview;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventOnStartPreviewSucceeded;)Lcom/google/common/base/Optional;
    .locals 4
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventOnStartPreviewSucceeded;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventOnStartPreviewSucceeded;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$000(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/state/StateStartingPreview$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateStartingPreview$3$1;-><init>(Lcom/android/camera/captureintent/state/StateStartingPreview$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 134
    sget-object v1, Lcom/android/camera/captureintent/state/StateStartingPreview$6;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$000(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

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

    .line 148
    invoke-static {}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Captrue mode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$000(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$000(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateFatal;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateFatal;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_0
    return-object v0

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    .line 138
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$000(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    .line 139
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$100(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    .line 140
    invoke-static {v3}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$200(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

    move-result-object v3

    .line 136
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->from(Lcom/android/camera/captureintent/state/StateStartingPreview;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateReadyForCapture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    .line 144
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$000(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    .line 145
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$100(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    .line 146
    invoke-static {v3}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$200(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

    move-result-object v3

    .line 142
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->from(Lcom/android/camera/captureintent/state/StateStartingPreview;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateReadyForRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 124
    check-cast p1, Lcom/android/camera/captureintent/event/EventOnStartPreviewSucceeded;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateStartingPreview$3;->processEvent(Lcom/android/camera/captureintent/event/EventOnStartPreviewSucceeded;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
