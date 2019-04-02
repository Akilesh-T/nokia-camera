.class Lcom/android/camera/session/CaptureSessionMicroVideoImpl$9;
.super Ljava/lang/Object;
.source "CaptureSessionMicroVideoImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->updatePreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

.field final synthetic val$path:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$9;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$9;->val$path:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 855
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$9;->val$path:Ljava/io/File;

    invoke-static {v5}, Lcom/android/camera/util/FileUtil;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 859
    .local v2, "jpegDataTemp":[B
    move-object v1, v2

    .line 861
    .local v1, "jpegData":[B
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 862
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {v1, v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 864
    .local v4, "placeholder":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$9;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v5}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$1000(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/PlaceholderManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$9;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v6}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$900(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/session/PlaceholderManager;->replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/graphics/Bitmap;)V

    .line 865
    iget-object v5, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$9;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v5}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$300(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$9;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v6}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$100(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$9;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v7}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$200(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/camera/session/SessionNotifier;->notifySessionUpdated(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 866
    .end local v1    # "jpegData":[B
    .end local v2    # "jpegDataTemp":[B
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "placeholder":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method
