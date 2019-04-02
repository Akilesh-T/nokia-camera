.class Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2$1;
.super Ljava/lang/Object;
.source "PreviewBarCodeRender.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2$1;->this$2:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 321
    invoke-static {}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "dialog onDismiss(bitmap) called"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2$1;->this$2:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;

    iget-object v0, v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$2;->this$1:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    iget-object v0, v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$902(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;I)I

    .line 323
    return-void
.end method
