.class public Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;
.super Ljava/lang/Object;
.source "PhotoSphereHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/PhotoSphereHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaMetadata"
.end annotation


# instance fields
.field public final mIsPanorama360:Z

.field public final mUsePanoramaViewer:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "usePanoramaViewer"    # Z
    .param p2, "isPanorama360"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    .line 37
    iput-boolean p2, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->mIsPanorama360:Z

    .line 38
    return-void
.end method
