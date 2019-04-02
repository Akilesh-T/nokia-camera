.class Lcom/android/camera/BeautyModule$8;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/camera/BeautyModule$8;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1084
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mDisplayAsFlashRunnable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/android/camera/BeautyModule$8;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$1100(Lcom/android/camera/BeautyModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule$8;->this$0:Lcom/android/camera/BeautyModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/BeautyModule;->access$3700(Lcom/android/camera/BeautyModule;Z)V

    goto :goto_0
.end method
