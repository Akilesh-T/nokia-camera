.class Lcom/android/camera/PhotoModule$PosRawPictureCallback$SaveYuvToJpegThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule$PosRawPictureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveYuvToJpegThread"
.end annotation


# instance fields
.field private data:[B

.field private height:I

.field private previewData:[B

.field final synthetic this$1:Lcom/android/camera/PhotoModule$PosRawPictureCallback;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule$PosRawPictureCallback;[BII)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1925
    iput-object p1, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback$SaveYuvToJpegThread;->this$1:Lcom/android/camera/PhotoModule$PosRawPictureCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1926
    iput-object p2, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback$SaveYuvToJpegThread;->data:[B

    .line 1927
    iput p3, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback$SaveYuvToJpegThread;->width:I

    .line 1928
    iput p4, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback$SaveYuvToJpegThread;->height:I

    .line 1929
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback$SaveYuvToJpegThread;->data:[B

    iget v1, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback$SaveYuvToJpegThread;->width:I

    iget v2, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback$SaveYuvToJpegThread;->height:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback$SaveYuvToJpegThread;->previewData:[B

    .line 1934
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback$SaveYuvToJpegThread;->this$1:Lcom/android/camera/PhotoModule$PosRawPictureCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$PosRawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1937
    :goto_0
    return-void

    .line 1936
    :cond_0
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PosRawPictureCallback  YuvToJpeg end"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
