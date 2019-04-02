.class Lcom/android/camera/util/CameraUtil$1$1;
.super Ljava/lang/Object;
.source "CameraUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/CameraUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/util/CameraUtil$1;


# direct methods
.method constructor <init>(Lcom/android/camera/util/CameraUtil$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/util/CameraUtil$1;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/camera/util/CameraUtil$1$1;->this$0:Lcom/android/camera/util/CameraUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/camera/util/CameraUtil$1$1;->this$0:Lcom/android/camera/util/CameraUtil$1;

    iget-boolean v0, v0, Lcom/android/camera/util/CameraUtil$1;->val$finishActivity:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/camera/util/CameraUtil$1$1;->this$0:Lcom/android/camera/util/CameraUtil$1;

    iget-object v0, v0, Lcom/android/camera/util/CameraUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 356
    :cond_0
    return-void
.end method
