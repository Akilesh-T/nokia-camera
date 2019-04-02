.class public Lcom/android/camera/tinyplanet/TinyPlanetNative;
.super Ljava/lang/Object;
.source "TinyPlanetNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "jni_tinyplanet"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native process(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IFF)V
.end method
