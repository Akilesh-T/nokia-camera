.class Lcom/android/camera/app/CameraAppUI$8;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraAppUI;->initDisplayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$8;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1406
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$8;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$8;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->isAppDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1413
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 1415
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$8;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$1900(Lcom/android/camera/app/CameraAppUI;)I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$8;->this$0:Lcom/android/camera/app/CameraAppUI;

    .line 1416
    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$000(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1417
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$8;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$000(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/PreviewStatusListener;->onPreviewFlipped()V

    .line 1418
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$8;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$600(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;->requestLayout()V

    .line 1422
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$8;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$400(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/CustomTextureView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/CustomTextureView;->requestLayout()V

    .line 1424
    :cond_2
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$8;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1, v0}, Lcom/android/camera/app/CameraAppUI;->access$1902(Lcom/android/camera/app/CameraAppUI;I)I

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1430
    return-void
.end method
