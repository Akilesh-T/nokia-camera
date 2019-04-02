.class Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "GalleryStyleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;


# direct methods
.method constructor <init>(Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager$1;->this$1:Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 252
    const/high16 v0, 0x43480000    # 200.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method
