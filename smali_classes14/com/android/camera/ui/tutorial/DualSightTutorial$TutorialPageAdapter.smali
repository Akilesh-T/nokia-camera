.class Lcom/android/camera/ui/tutorial/DualSightTutorial$TutorialPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DualSightTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/tutorial/DualSightTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TutorialPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/tutorial/DualSightTutorial;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$TutorialPageAdapter;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/tutorial/DualSightTutorial;Lcom/android/camera/ui/tutorial/DualSightTutorial$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/tutorial/DualSightTutorial;
    .param p2, "x1"    # Lcom/android/camera/ui/tutorial/DualSightTutorial$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/camera/ui/tutorial/DualSightTutorial$TutorialPageAdapter;-><init>(Lcom/android/camera/ui/tutorial/DualSightTutorial;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 170
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$TutorialPageAdapter;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-static {v0}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->access$600(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$TutorialPageAdapter;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-static {v0}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->access$600(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$TutorialPageAdapter;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-static {v0}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->access$600(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 174
    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
