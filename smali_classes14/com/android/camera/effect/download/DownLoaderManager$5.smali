.class Lcom/android/camera/effect/download/DownLoaderManager$5;
.super Ljava/lang/Object;
.source "DownLoaderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/download/DownLoaderManager;->downloadPostResultRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/download/DownLoaderManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/download/DownLoaderManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/download/DownLoaderManager;

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/android/camera/effect/download/DownLoaderManager$5;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1273
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/download/DownLoaderManager$5;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-virtual {v1}, Lcom/android/camera/effect/download/DownLoaderManager;->postRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    :goto_0
    return-void

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
