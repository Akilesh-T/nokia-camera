.class public abstract Lcom/android/camera/ui/AbstractTutorialOverlay;
.super Ljava/lang/Object;
.source "AbstractTutorialOverlay.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;
    }
.end annotation


# instance fields
.field protected final mCloseListener:Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;

.field private final mLayoutResId:I

.field private mPlaceholderWrapper:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(ILcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;)V
    .locals 0
    .param p1, "layoutResId"    # I
    .param p2, "closeListener"    # Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mLayoutResId:I

    .line 54
    iput-object p2, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mCloseListener:Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;

    .line 55
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractTutorialOverlay;->removeOverlayAndHideWrapper()V

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mCloseListener:Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mCloseListener:Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;

    invoke-interface {v0}, Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;->onTutorialClosed()V

    .line 102
    :cond_0
    return-void
.end method

.method protected abstract onInflated(Landroid/view/View;)V
.end method

.method public removeOverlayAndHideWrapper()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mPlaceholderWrapper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mPlaceholderWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mPlaceholderWrapper:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 92
    return-void
.end method

.method public final show(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 3
    .param p1, "placeHolderWrapper"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mPlaceholderWrapper:Landroid/view/ViewGroup;

    .line 65
    iget-object v1, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mPlaceholderWrapper:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mPlaceholderWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mPlaceholderWrapper:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 70
    const v1, 0x7f040097

    iget-object v2, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mPlaceholderWrapper:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f021a

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    .local v0, "placeHolder":Landroid/view/ViewGroup;
    iget v1, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->mLayoutResId:I

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AbstractTutorialOverlay;->onInflated(Landroid/view/View;)V

    .line 73
    return-void
.end method
