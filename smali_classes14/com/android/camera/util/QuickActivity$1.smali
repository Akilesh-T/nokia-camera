.class Lcom/android/camera/util/QuickActivity$1;
.super Ljava/lang/Object;
.source "QuickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/QuickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/util/QuickActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/util/QuickActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/util/QuickActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/util/QuickActivity$1;->this$0:Lcom/android/camera/util/QuickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/util/QuickActivity$1;->this$0:Lcom/android/camera/util/QuickActivity;

    invoke-static {v0}, Lcom/android/camera/util/QuickActivity;->access$000(Lcom/android/camera/util/QuickActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/android/camera/util/QuickActivity;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "delayed Runnable --> onResumeTasks()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/util/QuickActivity$1;->this$0:Lcom/android/camera/util/QuickActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/util/QuickActivity;->access$002(Lcom/android/camera/util/QuickActivity;Z)Z

    .line 96
    iget-object v0, p0, Lcom/android/camera/util/QuickActivity$1;->this$0:Lcom/android/camera/util/QuickActivity;

    invoke-virtual {v0}, Lcom/android/camera/util/QuickActivity;->onResumeTasks()V

    .line 98
    :cond_0
    return-void
.end method
