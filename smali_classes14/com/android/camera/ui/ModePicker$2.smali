.class Lcom/android/camera/ui/ModePicker$2;
.super Ljava/lang/Object;
.source "ModePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModePicker;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModePicker;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ModePicker;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/camera/ui/ModePicker$2;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$2;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v1}, Lcom/android/camera/ui/ModePicker;->access$300(Lcom/android/camera/ui/ModePicker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    monitor-enter v2

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$2;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v1}, Lcom/android/camera/ui/ModePicker;->access$300(Lcom/android/camera/ui/ModePicker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$2;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v1}, Lcom/android/camera/ui/ModePicker;->access$400(Lcom/android/camera/ui/ModePicker;)Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/ModePicker$2;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v3}, Lcom/android/camera/ui/ModePicker;->access$000(Lcom/android/camera/ui/ModePicker;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->getItemPosition(I)I

    move-result v0

    .line 321
    .local v0, "currentPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$2;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ModePicker;->smoothScrollToPosition(I)V

    .line 325
    .end local v0    # "currentPosition":I
    :cond_0
    monitor-exit v2

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
