.class Lcom/android/camera/ui/tutorial/DualSightTutorial$2;
.super Ljava/lang/Object;
.source "DualSightTutorial.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/tutorial/DualSightTutorial;->onInflated(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/tutorial/DualSightTutorial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/tutorial/DualSightTutorial;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$2;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 101
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 90
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$2;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-static {v0}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->access$200(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Lcom/rd/PageIndicatorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/PageIndicatorView;->setSelection(I)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$2;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-static {v0}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->access$300(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$2;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-static {v0}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->access$400(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$2;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-static {v0}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->access$300(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$2;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-static {v0, p1}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->access$502(Lcom/android/camera/ui/tutorial/DualSightTutorial;I)I

    .line 98
    return-void
.end method
