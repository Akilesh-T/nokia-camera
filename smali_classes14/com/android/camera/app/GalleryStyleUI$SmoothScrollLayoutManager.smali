.class public Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GalleryStyleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/GalleryStyleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmoothScrollLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/GalleryStyleUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/GalleryStyleUI;Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/GalleryStyleUI;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    .line 240
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 241
    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 247
    new-instance v0, Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager$1;

    .line 248
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager$1;-><init>(Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;Landroid/content/Context;)V

    .line 256
    .local v0, "smoothScroller":Landroid/support/v7/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 258
    return-void
.end method
