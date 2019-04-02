.class Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;
.super Ljava/lang/Object;
.source "BokehPreviewRendererHandler.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$FocusStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 6
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 458
    invoke-static {}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AF status is state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", focusPotint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 459
    sget-object v0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$4;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 484
    :goto_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$1000(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v1}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    move-result-object v0

    invoke-virtual {v0, v5, v3, v3, p2}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 489
    :goto_1
    return-void

    .line 461
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$902(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 464
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$902(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 467
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$902(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 471
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$902(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 474
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$902(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 477
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$902(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v5, v3, v3, v1}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
