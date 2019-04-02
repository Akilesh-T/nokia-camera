.class Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;
.super Ljava/lang/Object;
.source "ManualUI.java"

# interfaces
.implements Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManualOptionsScrollHanlder"
.end annotation


# instance fields
.field private mLeftIndicator:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field final synthetic this$0:Lcom/android/camera/ManualUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/ManualUI;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p2, "leftIndicator"    # Landroid/view/View;
    .param p3, "rightIndicator"    # Landroid/view/View;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;->this$0:Lcom/android/camera/ManualUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput-object p2, p0, Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;->mLeftIndicator:Landroid/view/View;

    .line 879
    iput-object p3, p0, Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;->mRightIndicator:Landroid/view/View;

    .line 880
    return-void
.end method


# virtual methods
.method public onLeftReached()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;->mLeftIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 885
    return-void
.end method

.method public onRightReached()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;->mRightIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 890
    return-void
.end method

.method public onScrollChange()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 894
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsScrollHanlder;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 896
    return-void
.end method
