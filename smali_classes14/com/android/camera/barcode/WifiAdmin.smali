.class public Lcom/android/camera/barcode/WifiAdmin;
.super Ljava/lang/Object;
.source "WifiAdmin.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_NO_PASSWD:I = 0x11

.field public static final TYPE_WEP:I = 0x12

.field public static final TYPE_WPA:I = 0x13


# instance fields
.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "WifiManger"

    sput-object v0, Lcom/android/camera/barcode/WifiAdmin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/camera/barcode/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 24
    return-void
.end method

.method private IsExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/camera/barcode/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 100
    .local v0, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    .end local v0    # "existingConfig":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "wifi"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/android/camera/barcode/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 28
    .local v0, "netId":I
    iget-object v1, p0, Lcom/android/camera/barcode/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 30
    return-void
.end method

.method public addNetwork(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 32
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    sget-object v0, Lcom/android/camera/barcode/WifiAdmin;->TAG:Ljava/lang/String;

    const-string v1, "addNetwork() ## nullpointer error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_1
    const/16 v0, 0x11

    if-eq p3, v0, :cond_2

    const/16 v0, 0x12

    if-eq p3, v0, :cond_2

    const/16 v0, 0x13

    if-eq p3, v0, :cond_2

    .line 38
    sget-object v0, Lcom/android/camera/barcode/WifiAdmin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNetwork() ## unknown type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/barcode/WifiAdmin;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/barcode/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public closeWifi()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/barcode/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/camera/barcode/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 117
    :cond_0
    return-void
.end method

.method public createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    sget-object v2, Lcom/android/camera/barcode/WifiAdmin;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "## Password = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "## Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 49
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 50
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 51
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 52
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 53
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/WifiAdmin;->IsExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 57
    .local v1, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/camera/barcode/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 61
    :cond_0
    const/16 v2, 0x11

    if-ne p3, v2, :cond_2

    .line 62
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    .line 63
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 64
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 94
    :cond_1
    :goto_0
    return-object v0

    .line 66
    :cond_2
    const/16 v2, 0x12

    if-ne p3, v2, :cond_3

    .line 67
    iput-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 68
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 69
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 70
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 71
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 72
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 73
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 74
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 75
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 76
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 77
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    .line 78
    :cond_3
    const/16 v2, 0x13

    if-ne p3, v2, :cond_1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 80
    iput-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 81
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 82
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 83
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 84
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 85
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 86
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 88
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 89
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 90
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 91
    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_0
.end method

.method public openWifi()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/barcode/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/camera/barcode/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 111
    :cond_0
    return-void
.end method
