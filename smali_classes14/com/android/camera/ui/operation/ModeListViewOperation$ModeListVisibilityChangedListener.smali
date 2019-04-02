.class public abstract Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;
.super Ljava/lang/Object;
.source "ModeListViewOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/operation/ModeListViewOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ModeListVisibilityChangedListener"
.end annotation


# instance fields
.field private mCurrentVisibility:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;->mCurrentVisibility:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public abstract onVisibilityChanged(Z)V
.end method

.method public onVisibilityEvent(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;->mCurrentVisibility:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;->mCurrentVisibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 287
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;->mCurrentVisibility:Ljava/lang/Boolean;

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;->onVisibilityChanged(Z)V

    .line 290
    :cond_1
    return-void
.end method
