.class public interface abstract Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;
.super Ljava/lang/Object;
.source "ModeListViewOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/operation/ModeListViewOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ModeSwitchListener"
.end annotation


# virtual methods
.method public abstract getCurrentModeIndex()I
.end method

.method public abstract getPreviewArea()Landroid/graphics/RectF;
.end method

.method public abstract isBackFacingCamera()Z
.end method

.method public abstract onModeButtonPressed(I)V
.end method

.method public abstract onModeSelected(I)V
.end method

.method public abstract onSettingsSelected()V
.end method
