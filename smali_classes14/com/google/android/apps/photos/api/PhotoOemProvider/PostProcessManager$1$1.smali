.class Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1$1;
.super Ljava/lang/Thread;
.source "PostProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1;


# direct methods
.method constructor <init>(Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1;
    .param p2, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1$1;->this$1:Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 67
    const-string v0, "PostProcessManager"

    const-string v1, "ProcessingMediaManager run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 69
    return-void
.end method
