.class Lcom/android/camera/PanoramaHal3Module$15$2;
.super Ljava/lang/Object;
.source "PanoramaHal3Module.java"

# interfaces
.implements Lcom/android/camera/panorama/PanoReadyStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaHal3Module$15;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PanoramaHal3Module$15;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaHal3Module$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PanoramaHal3Module$15;

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstReadyStateChanged(Z)V
    .locals 0
    .param p1, "ready"    # Z

    .prologue
    .line 1666
    return-void
.end method

.method public onPanoramaFailed(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 1653
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1654
    if-eqz p1, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3600(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/PanoramaHal3ModuleUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->getErrorMessageId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->showHintMessage(I)V

    .line 1657
    :cond_0
    return-void
.end method

.method public onPanoramaHint(I)V
    .locals 3
    .param p1, "warning"    # I

    .prologue
    .line 1643
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaHint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1644
    if-eqz p1, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3600(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/PanoramaHal3ModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->getErrorMessageId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->showHintMessage(I)V

    .line 1649
    :goto_0
    return-void

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3600(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/PanoramaHal3ModuleUI;

    move-result-object v0

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->showHintMessage(I)V

    goto :goto_0
.end method

.method public onPanoramaPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V
    .locals 9
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "fullImgWidth"    # I
    .param p3, "fullImgHeight"    # I
    .param p4, "previewAttr"    # [I
    .param p5, "direction"    # I
    .param p6, "offset"    # [I
    .param p7, "progress"    # I
    .param p8, "totalPreviewLength"    # I

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3600(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/PanoramaHal3ModuleUI;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/PanoramaHal3ModuleUI;->showPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V

    .line 1662
    return-void
.end method

.method public onPanoramaStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1612
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPanoramaStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1613
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1614
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 1615
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1616
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3600(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/PanoramaHal3ModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->showPanoRecordingUI(ZZ)V

    .line 1617
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1618
    return-void
.end method

.method public onPanoramaStarting()V
    .locals 2

    .prologue
    .line 1603
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPanoramaStarting"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1605
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 1606
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1607
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToVideoStop(I)V

    .line 1608
    return-void
.end method

.method public onPanoramaStoped(Z)V
    .locals 2
    .param p1, "hasFail"    # Z

    .prologue
    .line 1633
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPanoramaStoped"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1634
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1635
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1636
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3600(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/PanoramaHal3ModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/PanoramaHal3ModuleUI;->showPanoRecordingUI(ZZ)V

    .line 1637
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1638
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1639
    return-void
.end method

.method public onPanoramaStoping()V
    .locals 2

    .prologue
    .line 1622
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPanoramaStoping"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1623
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1624
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 1625
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1627
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 1628
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$2;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToFullSize(I)V

    .line 1629
    return-void
.end method
