.class public Lcom/android/camera/util/PhotoSphereHelper;
.super Ljava/lang/Object;
.source "PhotoSphereHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;,
        Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;
    }
.end annotation


# static fields
.field public static final NOT_PANORAMA:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    new-instance v0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;-><init>(ZZ)V

    sput-object v0, Lcom/android/camera/util/PhotoSphereHelper;->NOT_PANORAMA:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPanoramaModule(Lcom/android/camera/app/AppController;)Lcom/android/camera/CameraModule;
    .locals 1
    .param p0, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createWideAnglePanoramaModule(Lcom/android/camera/app/AppController;)Lcom/android/camera/CameraModule;
    .locals 1
    .param p0, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getModifiedTimeFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 110
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getPanoramaHorizontalDrawableId()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public static getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 88
    sget-object v0, Lcom/android/camera/util/PhotoSphereHelper;->NOT_PANORAMA:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    return-object v0
.end method

.method public static getPanoramaOrientationDescriptions()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public static getPanoramaOrientationIndicatorArrayId()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public static getPanoramaOrientationOptionArrayId()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public static getPanoramaVerticalDrawableId()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public static getPathFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasLightCycleCapture(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
