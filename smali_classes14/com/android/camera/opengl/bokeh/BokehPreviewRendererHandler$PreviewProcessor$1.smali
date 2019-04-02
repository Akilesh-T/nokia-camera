.class Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor$1;
.super Ljava/lang/Object;
.source "BokehPreviewRendererHandler.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->generateInputImagePair(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;IIII)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

.field final synthetic val$imageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor$1;->this$1:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    iput-object p2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor$1;->val$imageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor$1;->val$imageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->close()V

    .line 338
    return-void
.end method
