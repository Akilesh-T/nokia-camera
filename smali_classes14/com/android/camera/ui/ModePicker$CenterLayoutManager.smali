.class public Lcom/android/camera/ui/ModePicker$CenterLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "ModePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CenterLayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModePicker;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModePicker;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ModePicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager;->this$0:Lcom/android/camera/ui/ModePicker;

    .line 139
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 140
    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 144
    new-instance v0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;

    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;-><init>(Lcom/android/camera/ui/ModePicker$CenterLayoutManager;Landroid/content/Context;)V

    .line 145
    .local v0, "smoothScroller":Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModePicker$CenterLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 147
    return-void
.end method
