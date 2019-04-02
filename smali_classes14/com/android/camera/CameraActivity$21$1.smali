.class Lcom/android/camera/CameraActivity$21$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$21;->onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$21;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$21;

    .prologue
    .line 3002
    iput-object p1, p0, Lcom/android/camera/CameraActivity$21$1;->this$1:Lcom/android/camera/CameraActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x2710

    .line 3005
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    .line 3006
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3005
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(ILjava/lang/Integer;)V

    .line 3007
    iget-object v0, p0, Lcom/android/camera/CameraActivity$21$1;->this$1:Lcom/android/camera/CameraActivity$21;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$5500(Lcom/android/camera/CameraActivity;)Z

    .line 3008
    iget-object v0, p0, Lcom/android/camera/CameraActivity$21$1;->this$1:Lcom/android/camera/CameraActivity$21;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3009
    return-void
.end method
