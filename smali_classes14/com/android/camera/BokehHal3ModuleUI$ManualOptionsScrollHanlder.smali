.class Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsScrollHanlder;
.super Ljava/lang/Object;
.source "BokehHal3ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehHal3ModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManualOptionsScrollHanlder"
.end annotation


# instance fields
.field private mLeftIndicator:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field final synthetic this$0:Lcom/android/camera/BokehHal3ModuleUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/BokehHal3ModuleUI;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p2, "leftIndicator"    # Landroid/view/View;
    .param p3, "rightIndicator"    # Landroid/view/View;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsScrollHanlder;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p2, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsScrollHanlder;->mLeftIndicator:Landroid/view/View;

    .line 450
    iput-object p3, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsScrollHanlder;->mRightIndicator:Landroid/view/View;

    .line 451
    return-void
.end method


# virtual methods
.method public onLeftReached()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsScrollHanlder;->mLeftIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    return-void
.end method

.method public onRightReached()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsScrollHanlder;->mRightIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    return-void
.end method

.method public onScrollChange()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsScrollHanlder;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsScrollHanlder;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    return-void
.end method
