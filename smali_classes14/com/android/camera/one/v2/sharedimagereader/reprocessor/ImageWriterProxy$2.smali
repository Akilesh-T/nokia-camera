.class Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$2;
.super Ljava/lang/Object;
.source "ImageWriterProxy.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;-><init>(Lcom/android/camera/async/Lifetime;Landroid/media/ImageWriter;Lcom/android/camera/async/HandlerFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$2;->this$0:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$2;->this$0:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    invoke-static {v0}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->access$200(Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;)Landroid/media/ImageWriter;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$2;->this$0:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    invoke-static {v0}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->access$200(Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;)Landroid/media/ImageWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 61
    return-void
.end method
