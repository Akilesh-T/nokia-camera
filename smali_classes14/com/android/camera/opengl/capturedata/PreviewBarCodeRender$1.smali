.class Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;
.super Ljava/lang/Object;
.source "PreviewBarCodeRender.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$FocusStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;-><init>(Lcom/android/camera/CaptureModuleUI;Lcom/android/camera/app/AppController;Lcom/android/camera/async/Lifetime;IILcom/android/camera/async/MainThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 8
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-static {}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$000()Lcom/android/camera/debug/Log$Tag;

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

    .line 97
    sget-object v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$4;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$300(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$100(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_SET_FOCUS_CENTER:, focusPotint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    :goto_1
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$102(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$102(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 106
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$200(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$102(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$102(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 117
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$102(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 121
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$200(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 125
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$102(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_SET_FOCUS_CENTER:, focusPotint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 97
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
