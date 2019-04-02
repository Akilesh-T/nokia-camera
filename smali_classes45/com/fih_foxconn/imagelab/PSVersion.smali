.class public Lcom/fih_foxconn/imagelab/PSVersion;
.super Ljava/lang/Object;
.source "PSVersion.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PSVersion"

.field private static final VERSION:Ljava/lang/String; = "2.0.5"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "PSVersion"

    const-string v1, "PSModelSDK Version[2.0.5]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showOnce()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method
