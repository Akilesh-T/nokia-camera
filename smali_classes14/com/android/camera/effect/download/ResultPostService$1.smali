.class Lcom/android/camera/effect/download/ResultPostService$1;
.super Ljava/lang/Object;
.source "ResultPostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/download/ResultPostService;->runTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/download/ResultPostService;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/download/ResultPostService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/download/ResultPostService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/effect/download/ResultPostService$1;->this$0:Lcom/android/camera/effect/download/ResultPostService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/camera/effect/download/ResultPostService$1;->this$0:Lcom/android/camera/effect/download/ResultPostService;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/download/ResultPostService$1;->this$0:Lcom/android/camera/effect/download/ResultPostService;

    invoke-static {v1}, Lcom/android/camera/effect/download/DownLoaderManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/effect/download/DownLoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/download/DownLoaderManager;->postRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
