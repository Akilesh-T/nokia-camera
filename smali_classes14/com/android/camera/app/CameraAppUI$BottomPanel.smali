.class public interface abstract Lcom/android/camera/app/CameraAppUI$BottomPanel;
.super Ljava/lang/Object;
.source "CameraAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BottomPanel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;
    }
.end annotation


# static fields
.field public static final VIEWER_NONE:I = 0x0

.field public static final VIEWER_OTHER:I = 0x3

.field public static final VIEWER_PHOTO_SPHERE:I = 0x1

.field public static final VIEWER_REFOCUS:I = 0x2


# virtual methods
.method public abstract clearClingForViewer(I)V
.end method

.method public abstract getClingForViewer(I)Lcom/android/camera/widget/Cling;
.end method

.method public abstract hideControls()V
.end method

.method public abstract hideProgress()V
.end method

.method public abstract hideProgressError()V
.end method

.method public abstract setClingForViewer(ILcom/android/camera/widget/Cling;)V
.end method

.method public abstract setDeleteButtonVisibility(Z)V
.end method

.method public abstract setDeleteEnabled(Z)V
.end method

.method public abstract setEditButtonVisibility(Z)V
.end method

.method public abstract setEditEnabled(Z)V
.end method

.method public abstract setListener(Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;)V
.end method

.method public abstract setProgress(I)V
.end method

.method public abstract setProgressText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setShareButtonVisibility(Z)V
.end method

.method public abstract setShareEnabled(Z)V
.end method

.method public abstract setTinyPlanetEnabled(Z)V
.end method

.method public abstract setViewEnabled(Z)V
.end method

.method public abstract setViewerButtonVisibility(I)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract showControls()V
.end method

.method public abstract showProgress()V
.end method

.method public abstract showProgressError(Ljava/lang/CharSequence;)V
.end method
