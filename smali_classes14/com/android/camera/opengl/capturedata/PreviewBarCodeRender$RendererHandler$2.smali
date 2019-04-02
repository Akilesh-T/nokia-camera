.class Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;
.super Ljava/lang/Object;
.source "PreviewBarCodeRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

.field final synthetic val$mBarCodeValus:Lcom/google/android/gms/vision/barcode/Barcode;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;->this$1:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    iput-object p2, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;->val$mBarCodeValus:Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;->this$1:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    iget-object v0, v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$800(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/barcode/BarCodeDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;->this$1:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    iget-object v0, v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$800(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/barcode/BarCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/barcode/BarCodeDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;->this$1:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    iget-object v0, v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$800(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/barcode/BarCodeDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;->val$mBarCodeValus:Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/BarCodeDialog;->getAlertBuilder(Lcom/google/android/gms/vision/barcode/Barcode;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2$1;-><init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;->this$1:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    iget-object v0, v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$800(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/barcode/BarCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/barcode/BarCodeDialog;->showDialog()V

    .line 327
    :cond_0
    return-void
.end method
