.class public Lcom/android/camera/effect/provider/EffectProviderContract;
.super Ljava/lang/Object;
.source "EffectProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;
    }
.end annotation


# static fields
.field public static DB_NAME:Ljava/lang/String;

.field public static DB_VERSION:I

.field public static URI_EFFECT:Landroid/net/Uri;

.field private static URI_EFFECT_STR:Ljava/lang/String;

.field public static authorities:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "effect.db"

    sput-object v0, Lcom/android/camera/effect/provider/EffectProviderContract;->DB_NAME:Ljava/lang/String;

    .line 14
    const-string v0, "com.android.camera.effect.provider.effectprovider"

    sput-object v0, Lcom/android/camera/effect/provider/EffectProviderContract;->authorities:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/android/camera/effect/provider/EffectProviderContract;->DB_VERSION:I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/effect/provider/EffectProviderContract;->authorities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/effect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/provider/EffectProviderContract;->URI_EFFECT_STR:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/android/camera/effect/provider/EffectProviderContract;->URI_EFFECT_STR:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/provider/EffectProviderContract;->URI_EFFECT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
