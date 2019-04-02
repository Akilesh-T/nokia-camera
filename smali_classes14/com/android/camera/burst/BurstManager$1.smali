.class Lcom/android/camera/burst/BurstManager$1;
.super Ljava/lang/Object;
.source "BurstManager.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/burst/BurstManager;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/burst/BurstManager;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstMediaSaved(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v1}, Lcom/android/camera/burst/BurstManager;->access$000(Lcom/android/camera/burst/BurstManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v1}, Lcom/android/camera/burst/BurstManager;->access$000(Lcom/android/camera/burst/BurstManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v1}, Lcom/android/camera/burst/BurstManager;->access$100(Lcom/android/camera/burst/BurstManager;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v1}, Lcom/android/camera/burst/BurstManager;->access$200(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/MediaSaver;->isQueueEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v1}, Lcom/android/camera/burst/BurstManager;->access$000(Lcom/android/camera/burst/BurstManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v1}, Lcom/android/camera/burst/BurstManager;->access$000(Lcom/android/camera/burst/BurstManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v1}, Lcom/android/camera/burst/BurstManager;->access$000(Lcom/android/camera/burst/BurstManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Landroid/content/ContentValues;

    .line 77
    .local v0, "all_values":[Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v1}, Lcom/android/camera/burst/BurstManager;->access$000(Lcom/android/camera/burst/BurstManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v1}, Lcom/android/camera/burst/BurstManager;->access$000(Lcom/android/camera/burst/BurstManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 79
    new-instance v1, Lcom/android/camera/burst/BurstManager$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/BurstManager$1$1;-><init>(Lcom/android/camera/burst/BurstManager$1;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [[Landroid/content/ContentValues;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/burst/BurstManager$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    .end local v0    # "all_values":[Landroid/content/ContentValues;
    :cond_1
    return-void
.end method
