.class Lcom/android/camera/app/CameraAppUI$2;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$2;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 855
    new-instance v0, Lcom/google/lens/sdk/LensApi;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$2;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    .line 856
    .local v0, "api":Lcom/google/lens/sdk/LensApi;
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$2;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;)V

    .line 858
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/UsageStatistics;->googleLensEvent()V

    .line 860
    return-void
.end method
