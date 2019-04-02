.class public Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
.super Lcom/android/camera/one/OneCamera$CaptureParameters;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoCaptureParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;,
        Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;,
        Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;,
        Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;,
        Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;,
        Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;,
        Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
    }
.end annotation


# instance fields
.field public final callback:Lcom/android/camera/one/OneCamera$PictureCallback;

.field public final frontFlashIfNeed:Z

.field public final heading:I

.field public final saverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

.field public final screenFlashController:Lcom/android/camera/one/OneCamera$ScreenFlashController;

.field public final timerSeconds:F

.field public final zoom:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFF)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "orientation"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "debugDataFolder"    # Ljava/io/File;
    .param p5, "callback"    # Lcom/android/camera/one/OneCamera$PictureCallback;
    .param p6, "screenFlashController"    # Lcom/android/camera/one/OneCamera$ScreenFlashController;
    .param p7, "saverCallback"    # Lcom/android/camera/one/OneCamera$PictureSaverCallback;
    .param p8, "heading"    # I
    .param p9, "zoom"    # F
    .param p10, "timerSeconds"    # F

    .prologue
    .line 669
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFFZ)V

    .line 670
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFFZ)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "orientation"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "debugDataFolder"    # Ljava/io/File;
    .param p5, "callback"    # Lcom/android/camera/one/OneCamera$PictureCallback;
    .param p6, "screenFlashController"    # Lcom/android/camera/one/OneCamera$ScreenFlashController;
    .param p7, "saverCallback"    # Lcom/android/camera/one/OneCamera$PictureSaverCallback;
    .param p8, "heading"    # I
    .param p9, "zoom"    # F
    .param p10, "timerSeconds"    # F
    .param p11, "frontFlashIfNeed"    # Z

    .prologue
    .line 675
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/one/OneCamera$CaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;)V

    .line 676
    iput-object p5, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    .line 677
    iput-object p6, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->screenFlashController:Lcom/android/camera/one/OneCamera$ScreenFlashController;

    .line 678
    iput-object p7, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->saverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 679
    iput p8, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->heading:I

    .line 680
    iput p9, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->zoom:F

    .line 681
    iput p10, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->timerSeconds:F

    .line 682
    iput-boolean p11, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->frontFlashIfNeed:Z

    .line 683
    return-void
.end method
