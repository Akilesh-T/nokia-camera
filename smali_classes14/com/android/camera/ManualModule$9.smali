.class Lcom/android/camera/ManualModule$9;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/camera/ManualModule$9;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1084
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mDisplayAsFlashRunnable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/android/camera/ManualModule$9;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$500(Lcom/android/camera/ManualModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule$9;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3000(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/camera/ManualModule$9;->this$0:Lcom/android/camera/ManualModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ManualModule;->access$3100(Lcom/android/camera/ManualModule;Z)V

    goto :goto_0
.end method
