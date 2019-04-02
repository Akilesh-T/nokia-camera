.class final Lcom/android/camera/util/CameraUtil$2;
.super Ljava/lang/Object;
.source "CameraUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/CameraUtil;->showErrorToast(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$orientation:I

.field final synthetic val$toastMsgId:I


# direct methods
.method constructor <init>(Landroid/app/Activity;II)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/camera/util/CameraUtil$2;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/android/camera/util/CameraUtil$2;->val$toastMsgId:I

    iput p3, p0, Lcom/android/camera/util/CameraUtil$2;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 397
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Show fatal error toast"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 398
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/util/CameraUtil$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/util/CameraUtil$2;->val$activity:Landroid/app/Activity;

    iget v3, p0, Lcom/android/camera/util/CameraUtil$2;->val$toastMsgId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/util/CameraUtil$2;->val$orientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 399
    return-void
.end method
