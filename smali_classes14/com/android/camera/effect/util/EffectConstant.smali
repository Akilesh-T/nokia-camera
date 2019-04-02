.class public Lcom/android/camera/effect/util/EffectConstant;
.super Ljava/lang/Object;
.source "EffectConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;,
        Lcom/android/camera/effect/util/EffectConstant$EffectTypeVersion;,
        Lcom/android/camera/effect/util/EffectConstant$EffectJsonFileKey;,
        Lcom/android/camera/effect/util/EffectConstant$EffectJsonFile;,
        Lcom/android/camera/effect/util/EffectConstant$EffectCloudFile;,
        Lcom/android/camera/effect/util/EffectConstant$EffectDownEvent;,
        Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;,
        Lcom/android/camera/effect/util/EffectConstant$EffectDiskCacheDir;,
        Lcom/android/camera/effect/util/EffectConstant$EffectType;
    }
.end annotation


# static fields
.field public static final EFFECT_PRELOAD_RESOURCE_VERSION_KEY:Ljava/lang/String; = "effect_preload_resource_version_key"

.field public static final EFFECT_PRELOAD_RESOURCE_VERSION_VALUE:I = 0x1

.field private static TAG:Lcom/android/camera/debug/Log$Tag; = null

.field public static final THEME_ANIMATION_DURATION:I = 0x21


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "EffectConstant"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/effect/util/EffectConstant;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/android/camera/effect/util/EffectConstant;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method
