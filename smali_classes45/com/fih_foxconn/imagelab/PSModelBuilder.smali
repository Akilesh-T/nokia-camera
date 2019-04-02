.class public Lcom/fih_foxconn/imagelab/PSModelBuilder;
.super Ljava/lang/Object;
.source "PSModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;,
        Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;,
        Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;
    }
.end annotation


# instance fields
.field private final ONLY_SUPPORT_CPU_RUNTIME:Z

.field private mApplication:Landroid/app/Application;

.field private mInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

.field private mModelType:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

.field private mPlatform:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

.field private mRuntime:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->ONLY_SUPPORT_CPU_RUNTIME:Z

    .line 52
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->CPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->mRuntime:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 53
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->QCT:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->mPlatform:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 54
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->mApplication:Landroid/app/Application;

    .line 55
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->NORMAL:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->mModelType:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .line 56
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGBM:Lcom/fih_foxconn/imagelab/PSModelInputType;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->mInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    .line 57
    return-void
.end method

.method private getNeuralNetworkRuntime(Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;)Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .locals 3
    .param p1, "runtime"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .prologue
    .line 146
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$Runtime:[I

    invoke-virtual {p1}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 157
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 160
    .local v0, "nnRuntime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    :goto_0
    return-object v0

    .line 148
    .end local v0    # "nnRuntime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    :pswitch_0
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 149
    .restart local v0    # "nnRuntime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    goto :goto_0

    .line 151
    .end local v0    # "nnRuntime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    :pswitch_1
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 152
    .restart local v0    # "nnRuntime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    goto :goto_0

    .line 154
    .end local v0    # "nnRuntime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    :pswitch_2
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->DSP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 155
    .restart local v0    # "nnRuntime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/fih_foxconn/imagelab/AbstractPSModel;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelMobile;

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->mInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-direct {v0, v1}, Lcom/fih_foxconn/imagelab/PSModelMobile;-><init>(Lcom/fih_foxconn/imagelab/PSModelInputType;)V

    return-object v0
.end method

.method public setApplication(Landroid/app/Application;)Lcom/fih_foxconn/imagelab/PSModelBuilder;
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->mApplication:Landroid/app/Application;

    .line 71
    return-object p0
.end method

.method public setInputType(Lcom/fih_foxconn/imagelab/PSModelInputType;)Lcom/fih_foxconn/imagelab/PSModelBuilder;
    .locals 0
    .param p1, "type"    # Lcom/fih_foxconn/imagelab/PSModelInputType;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->mInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    .line 81
    return-object p0
.end method

.method public setModelType(Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;)Lcom/fih_foxconn/imagelab/PSModelBuilder;
    .locals 0
    .param p1, "type"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->mModelType:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .line 76
    return-object p0
.end method

.method public setPlatform(Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;)Lcom/fih_foxconn/imagelab/PSModelBuilder;
    .locals 0
    .param p1, "mPlatform"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->mPlatform:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 66
    return-object p0
.end method

.method public setRuntime(Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;)Lcom/fih_foxconn/imagelab/PSModelBuilder;
    .locals 0
    .param p1, "mRuntime"    # Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder;->mRuntime:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 61
    return-object p0
.end method
