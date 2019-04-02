.class Lcom/android/camera/KeyguardCameraActivity$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "KeyguardCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/KeyguardCameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/KeyguardCameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/KeyguardCameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/KeyguardCameraActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/KeyguardCameraActivity$1;->this$0:Lcom/android/camera/KeyguardCameraActivity;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/KeyguardCameraActivity$1;->this$0:Lcom/android/camera/KeyguardCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/KeyguardCameraActivity;->finish()V

    .line 61
    return-void
.end method

.method public onDismissError()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/KeyguardCameraActivity$1;->this$0:Lcom/android/camera/KeyguardCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/KeyguardCameraActivity;->finish()V

    .line 50
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/KeyguardCameraActivity$1;->this$0:Lcom/android/camera/KeyguardCameraActivity;

    invoke-static {v0}, Lcom/android/camera/KeyguardCameraActivity;->access$000(Lcom/android/camera/KeyguardCameraActivity;)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/KeyguardCameraActivity$1;->this$0:Lcom/android/camera/KeyguardCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/KeyguardCameraActivity;->finish()V

    .line 56
    return-void
.end method
