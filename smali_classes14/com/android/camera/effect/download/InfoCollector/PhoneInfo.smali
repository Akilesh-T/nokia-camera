.class public Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"


# instance fields
.field public AndroidReleaseVer:Ljava/lang/String;

.field public BuildFingerprint:Ljava/lang/String;

.field public BuildID:Ljava/lang/String;

.field public BuildType:Ljava/lang/String;

.field public CodeName:Ljava/lang/String;

.field public DEVICEID:Ljava/lang/String;

.field public IMEI:Ljava/lang/String;

.field public IMEI2:Ljava/lang/String;

.field public IncVersion:Ljava/lang/String;

.field public Language:Ljava/lang/String;

.field public MCC:Ljava/lang/String;

.field public MEID:Ljava/lang/String;

.field public MNC:Ljava/lang/String;

.field public Model:Ljava/lang/String;

.field public NetworkName:Ljava/lang/String;

.field public NetworkType:Ljava/lang/String;

.field public PSN:Ljava/lang/String;

.field public PhoneType:Ljava/lang/String;

.field public ProductBoard:Ljava/lang/String;

.field public ProductBrand:Ljava/lang/String;

.field public ProductDevice:Ljava/lang/String;

.field public ProductModel:Ljava/lang/String;

.field public ProductName:Ljava/lang/String;

.field public Project:Ljava/lang/String;

.field public SDKVersion:Ljava/lang/String;

.field public Subversion:Ljava/lang/String;

.field public Version:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public skuId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->imei:Ljava/lang/String;

    .line 6
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->skuId:Ljava/lang/String;

    .line 8
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->ProductBoard:Ljava/lang/String;

    .line 9
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->ProductBrand:Ljava/lang/String;

    .line 10
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->ProductDevice:Ljava/lang/String;

    .line 11
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->ProductModel:Ljava/lang/String;

    .line 12
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->ProductName:Ljava/lang/String;

    .line 13
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->BuildID:Ljava/lang/String;

    .line 14
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->BuildType:Ljava/lang/String;

    .line 15
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->BuildFingerprint:Ljava/lang/String;

    .line 16
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->AndroidReleaseVer:Ljava/lang/String;

    .line 17
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->SDKVersion:Ljava/lang/String;

    .line 18
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IncVersion:Ljava/lang/String;

    .line 19
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->CodeName:Ljava/lang/String;

    .line 20
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->NetworkName:Ljava/lang/String;

    .line 21
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->NetworkType:Ljava/lang/String;

    .line 22
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->PhoneType:Ljava/lang/String;

    .line 24
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Language:Ljava/lang/String;

    .line 27
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->DEVICEID:Ljava/lang/String;

    .line 28
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IMEI:Ljava/lang/String;

    .line 29
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IMEI2:Ljava/lang/String;

    .line 30
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MEID:Ljava/lang/String;

    .line 31
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->PSN:Ljava/lang/String;

    .line 35
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MCC:Ljava/lang/String;

    .line 36
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MNC:Ljava/lang/String;

    .line 37
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Model:Ljava/lang/String;

    .line 38
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Version:Ljava/lang/String;

    .line 39
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Subversion:Ljava/lang/String;

    .line 40
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->phoneNumber:Ljava/lang/String;

    .line 41
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Project:Ljava/lang/String;

    return-void
.end method
