.class public final Lcom/google/android/apps/photos/api/signature/TrustedPartners;
.super Ljava/lang/Object;
.source "TrustedPartners.java"


# static fields
.field private static final HASH_ALGORITHM:Ljava/lang/String; = "SHA1"

.field private static final TAG:Ljava/lang/String; = "TrustedPartners"


# instance fields
.field private final packageManager:Landroid/content/pm/PackageManager;

.field private final trustedPartnerCertificateHashes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "trustedPartnerCertificateHashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/photos/api/signature/TrustedPartners;->packageManager:Landroid/content/pm/PackageManager;

    .line 31
    iput-object p2, p0, Lcom/google/android/apps/photos/api/signature/TrustedPartners;->trustedPartnerCertificateHashes:Ljava/util/Set;

    .line 32
    return-void
.end method


# virtual methods
.method public isTrustedApplication(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x0

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    const-string v5, "TrustedPartners"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    const-string v5, "TrustedPartners"

    const-string v6, "null or empty package name; do not trust"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :goto_0
    return v4

    .line 50
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/google/android/apps/photos/api/signature/TrustedPartners;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 58
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 61
    :cond_2
    const-string v5, "TrustedPartners"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    const-string v5, "TrustedPartners"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " signatures found for package ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "); do not trust"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "TrustedPartners"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    const-string v5, "TrustedPartners"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package not found ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "); do not trust"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_1
    const-string v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 69
    .local v1, "digest":Ljava/security/MessageDigest;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 70
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/photos/api/signature/HexConvert;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "certHash":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/photos/api/signature/TrustedPartners;->trustedPartnerCertificateHashes:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto/16 :goto_0

    .line 72
    .end local v0    # "certHash":Ljava/lang/String;
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v2

    .line 73
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "TrustedPartners"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    const-string v5, "TrustedPartners"

    const-string v6, "unable to compute hash using SHA1; do not trust"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isTrustedAuthority(Ljava/lang/String;)Z
    .locals 5
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Lcom/google/android/apps/photos/api/signature/TrustedPartners;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 89
    .local v0, "info":Landroid/content/pm/ProviderInfo;
    if-nez v0, :cond_1

    .line 90
    const-string v2, "TrustedPartners"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const-string v2, "TrustedPartners"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no provider found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; do not trust"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/photos/api/signature/TrustedPartners;->isTrustedApplication(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
