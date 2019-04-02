.class Lcom/android/camera/ui/AdvancedBottomBar$3;
.super Ljava/lang/Object;
.source "AdvancedBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AdvancedBottomBar;->setSwitchButtonEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/AdvancedBottomBar;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedBottomBar;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/AdvancedBottomBar;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedBottomBar$3;->this$0:Lcom/android/camera/ui/AdvancedBottomBar;

    iput-boolean p2, p0, Lcom/android/camera/ui/AdvancedBottomBar$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 416
    iget-object v2, p0, Lcom/android/camera/ui/AdvancedBottomBar$3;->this$0:Lcom/android/camera/ui/AdvancedBottomBar;

    invoke-static {v2}, Lcom/android/camera/ui/AdvancedBottomBar;->access$100(Lcom/android/camera/ui/AdvancedBottomBar;)Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedBottomBar$3;->this$0:Lcom/android/camera/ui/AdvancedBottomBar;

    invoke-static {v2}, Lcom/android/camera/ui/AdvancedBottomBar;->access$100(Lcom/android/camera/ui/AdvancedBottomBar;)Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v2

    iget-boolean v0, v2, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 417
    .local v0, "enableCamera":Z
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/AdvancedBottomBar$3;->this$0:Lcom/android/camera/ui/AdvancedBottomBar;

    invoke-static {v2}, Lcom/android/camera/ui/AdvancedBottomBar;->access$200(Lcom/android/camera/ui/AdvancedBottomBar;)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/ui/AdvancedBottomBar$3;->val$enabled:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 418
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar$3;->this$0:Lcom/android/camera/ui/AdvancedBottomBar;

    invoke-static {v1}, Lcom/android/camera/ui/AdvancedBottomBar;->access$200(Lcom/android/camera/ui/AdvancedBottomBar;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/AdvancedBottomBar$3;->val$enabled:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 419
    return-void

    .end local v0    # "enableCamera":Z
    :cond_1
    move v0, v1

    .line 416
    goto :goto_0
.end method
