.class Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$1;
.super Ljava/lang/Object;
.source "ImageWriterProxy.java"

# interfaces
.implements Landroid/media/ImageWriter$OnImageReleasedListener;


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
    .line 48
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$1;->this$0:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageReleased(Landroid/media/ImageWriter;)V
    .locals 3
    .param p1, "writer"    # Landroid/media/ImageWriter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$1;->this$0:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    invoke-static {v0}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->access$100(Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$1;->this$0:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    invoke-static {v0}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->access$000(Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;)I

    move-result v2

    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$1;->this$0:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    invoke-static {v0}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->access$100(Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
