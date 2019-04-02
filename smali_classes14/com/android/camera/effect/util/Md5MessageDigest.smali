.class public Lcom/android/camera/effect/util/Md5MessageDigest;
.super Lcom/android/camera/effect/util/AbstractMessageDigest;
.source "Md5MessageDigest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/camera/effect/util/AbstractMessageDigest;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMessageDigest()Ljava/security/MessageDigest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 10
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method
