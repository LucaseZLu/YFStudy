public interface IUpdateComponent
{
    void OnUpdate();
    /// <summary>
    /// 实例编号
    /// </summary>
    int InstanceId { get; }
}