.class public Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;
.super Ljava/lang/Object;
.source "EffectConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/util/EffectConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EffectResourcesUpdate"
.end annotation


# static fields
.field public static ANIMOJI_RESOURCE_UPDATE:Z

.field public static STICKER_THEME_RESOURCE_UPDATE:Z

.field public static mAnimojiUpdateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mStickerUpdateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    sput-boolean v0, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->STICKER_THEME_RESOURCE_UPDATE:Z

    .line 120
    sput-boolean v0, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->ANIMOJI_RESOURCE_UPDATE:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->mStickerUpdateList:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->mAnimojiUpdateList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
