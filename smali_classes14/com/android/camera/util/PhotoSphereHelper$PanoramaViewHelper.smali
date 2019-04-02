.class public Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;
.super Ljava/lang/Object;
.source "PhotoSphereHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/PhotoSphereHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaViewHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public showPanorama(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public showRgbz(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 78
    return-void
.end method
