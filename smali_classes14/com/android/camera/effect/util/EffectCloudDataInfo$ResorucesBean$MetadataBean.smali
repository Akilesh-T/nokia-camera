.class public Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;
.super Ljava/lang/Object;
.source "EffectCloudDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetadataBean"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;->key:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;->value:Ljava/lang/String;

    .line 224
    return-void
.end method
