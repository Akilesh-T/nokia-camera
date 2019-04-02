.class Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1$1;
.super Ljava/lang/Object;
.source "PreviewBarCodeRender.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1$1;->this$2:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 296
    invoke-static {}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "dialog onDismiss(bitmap) called"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1$1;->this$2:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1;

    iget-object v0, v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler$1;->this$1:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    iget-object v0, v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$902(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;I)I

    .line 298
    return-void
.end method
