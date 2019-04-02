.class public Lcom/android/camera/effect/util/EffectClouldErrorInfo;
.super Ljava/lang/Object;
.source "EffectClouldErrorInfo.java"


# instance fields
.field private description:Ljava/lang/String;

.field private error:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectClouldErrorInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectClouldErrorInfo;->error:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectClouldErrorInfo;->description:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectClouldErrorInfo;->error:Ljava/lang/String;

    .line 17
    return-void
.end method
