//
// ChannelInformationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ChannelInformationAPI {

    /**
     Close Channel
     
     - parameter channel: (path) Channel ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelDelete(channel: ChannelIDModel, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        channelsChannelDeleteWithRequestBuilder(channel: channel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Close Channel
     - DELETE /channels/:channel
     - Deletes a server channel, leaves a group or closes a DM.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - returns: RequestBuilder<Void> 
     */
    open class func channelsChannelDeleteWithRequestBuilder(channel: ChannelIDModel) -> RequestBuilder<Void> {
        var localVariablePath = "/channels/:channel"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = RevoltAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Fetch Channel
     
     - parameter channel: (path) Channel ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelGet(channel: ChannelIDModel, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: ChannelModel?, _ error: Error?) -> Void)) {
        channelsChannelGetWithRequestBuilder(channel: channel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch Channel
     - GET /channels/:channel
     - Retrieve a channel.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - returns: RequestBuilder<ChannelModel> 
     */
    open class func channelsChannelGetWithRequestBuilder(channel: ChannelIDModel) -> RequestBuilder<ChannelModel> {
        var localVariablePath = "/channels/:channel"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChannelModel>.Type = RevoltAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Edit Channel
     
     - parameter channel: (path) Channel ID 
     - parameter informationEditChannelModel: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelPatch(channel: ChannelIDModel, informationEditChannelModel: ChannelsChannelInformationEditChannelModel? = nil, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        channelsChannelPatchWithRequestBuilder(channel: channel, informationEditChannelModel: informationEditChannelModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Edit Channel
     - PATCH /channels/:channel
     - Edit a channel object.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - parameter informationEditChannelModel: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func channelsChannelPatchWithRequestBuilder(channel: ChannelIDModel, informationEditChannelModel: ChannelsChannelInformationEditChannelModel? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/channels/:channel"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: informationEditChannelModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = RevoltAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
